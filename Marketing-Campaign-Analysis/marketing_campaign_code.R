
# 1. 필수 라이브러리 로드
library(readr)
library(dplyr)
library(ggplot2)
library(car)   
library(e1071)

# 2. 데이터셋 불러오기
marketing_df <- read_csv2("C:/data/marketing_campaign.csv")

# 3. 데이터 전처리 및 파생변수 생성
# 3.1 변수 생성
marketing_df$age = 2025 - marketing_df$Year_Birth
marketing_df$TotalChildren = marketing_df$Kidhome + marketing_df$Teenhome

marketing_df = marketing_df %>% 
  mutate(Total_Spending = MntWines + MntFruits + MntMeatProducts + 
           MntFishProducts + MntSweetProducts + MntGoldProds)

marketing_df = marketing_df %>% 
  mutate(TotalCampaignsAccepted = AcceptedCmp1 + AcceptedCmp2 + AcceptedCmp3 + 
           AcceptedCmp4 + AcceptedCmp5 + Response)

# 3.2 범주형 변수 변환
marketing_df$Education = as.factor(marketing_df$Education)
marketing_df$Marital_Status = as.factor(marketing_df$Marital_Status)

# 3.3 Income 결측치 처리 (중앙값 대체)
marketing_df$Income[is.na(marketing_df$Income)] = median(marketing_df$Income, na.rm = TRUE)

# 3.4 이상 범주 및 나이 이상치(100세 이상) 제거
marketing_df <- marketing_df[!marketing_df$Marital_Status %in% c("Absurd", "YOLO"), ]
marketing_df$Marital_Status <- as.character(marketing_df$Marital_Status)
marketing_df$Marital_Status[marketing_df$Marital_Status == "Alone"] <- "Single"
marketing_df$Marital_Status <- as.factor(marketing_df$Marital_Status)

marketing_df <- marketing_df[marketing_df$age < 100, ]


# 4. EDA 및 시각화
# 4.1 주요변수 분포 확인
ggplot(marketing_df, aes(x = Total_Spending)) +
  geom_histogram(binwidth = 50, fill = "skyblue", color = "black", alpha = 0.8) +
  labs(title = "총 소비액 분포", x = "총 소비액", y = "고객 수") + theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

ggplot(marketing_df, aes(x = Income)) +
  geom_histogram(binwidth = 5000, fill = "lightgreen", color = "black", alpha = 0.8) +
  labs(title = "소득 분포", x = "소득", y = "고객 수") + theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# 4.2 관계 시각화
par(mfrow = c(2, 3), mar = c(4, 4, 2, 2) + 0.1, mgp = c(2.5, 0.8, 0))

plot(marketing_df$Income, marketing_df$Total_Spending, main = "소득과 총 소비액 관계", xlab = "소득", ylab = "총 소비액", col = "darkblue", pch = 16, cex = 0.8)
plot(marketing_df$age, marketing_df$Total_Spending, main = "나이와 총 소비액 관계", xlab = "나이", ylab = "총 소비액", col = "darkgreen", pch = 16, cex = 0.8)
boxplot(marketing_df$Total_Spending ~ as.factor(marketing_df$TotalCampaignsAccepted), main = "캠페인 수락 수에 따른 소비액", xlab = "총 수락 캠페인 수", ylab = "총 소비액", col = "lightcoral", border = "black")
boxplot(marketing_df$Total_Spending ~ as.factor(marketing_df$TotalChildren), main = "총 자녀 수에 따른 소비액", xlab = "총 자녀 수", ylab = "총 소비액", col = "pink", border = "black")
boxplot(marketing_df$Total_Spending ~ marketing_df$Education, main = "교육 수준별 총 소비액", xlab = "교육 수준", ylab = "총 소비액", col = c("yellow", "orange", "red", "purple", "brown"), border = "black")
boxplot(marketing_df$Total_Spending ~ marketing_df$Marital_Status, main = "결혼 여부별 총 소비액", xlab = "결혼 여부", ylab = "총 소비액", col = rainbow(length(unique(marketing_df$Marital_Status))), border = "black")


# 5. 종속변수 로그 변환
marketing_df$Log_Total_Spending <- log(marketing_df$Total_Spending)


# 6. 회귀 모델 구축 및 진단
# 6.1 초기 전체 모델 적합
lm_model <- lm(Log_Total_Spending ~ Income + age + Education + Marital_Status + 
                 Recency + NumWebVisitsMonth + TotalCampaignsAccepted + TotalChildren, 
               data = marketing_df)

summary(lm_model)
vif(lm_model) # 다중공선성 진단

# 6.2 영향점 진단 및 제거
par(mfrow = c(1, 1))
cooks.distance_values <- cooks.distance(lm_model)
influential_points <- which(cooks.distance_values > (4 / length(cooks.distance_values)))

# 강력한 유의 영향점인 2227번 관측치 제외
marketing_df_cleaned <- marketing_df[-2227, ]


# 7. 모델 변수 선택 및 비교 평가 (다중공선성 및 유의성 기준 변수 제거)
# lm_model_s1: Marital_Status 변수 제거
lm_model_s1 <- lm(Log_Total_Spending ~ Income + age + Education + 
                    Recency + NumWebVisitsMonth + TotalCampaignsAccepted + TotalChildren, 
                  data = marketing_df_cleaned)

# lm_model_s2: Education 변수 제거
lm_model_s2 <- lm(Log_Total_Spending ~ Income + age + Marital_Status + 
                    Recency + NumWebVisitsMonth + TotalCampaignsAccepted + TotalChildren, 
                  data = marketing_df_cleaned)

# lm_model_s3: Marital_Status 및 Education 변수 모두 제거 (최종 채택 모델)
lm_model_s3 <- lm(Log_Total_Spending ~ Income + age + 
                    Recency + NumWebVisitsMonth + TotalCampaignsAccepted + TotalChildren, 
                  data = marketing_df_cleaned)

# 최종 선정한 모델 결과 요약 출력
summary(lm_model_s3)

install.packages("lm.beta")
library(lm.beta)

lm.beta(lm_model_s3)

# 최종 모델 잔차 진단 플롯 출력 (선형성, 정규성 등 확인)
par(mfrow = c(2, 2))
plot(lm_model_s3)

#--------------------------------------------------
head(marketing_df_cleaned)

marketing_dashboard <- marketing_df_cleaned %>%
  select(Income, age, Education, Marital_Status, Recency, NumWebVisitsMonth, Response, TotalCampaignsAccepted, TotalChildren, Total_Spending) %>% 
  rename(Age = age)
write.csv(marketing_dashboard, "marketing_dashboard.csv", row.names = FALSE)
getwd()
marketing_dashboard$Customer_ID <- 1:nrow(marketing_dashboard)
marketing_dashboard <- marketing_dashboard %>%
  select(Customer_ID, everything())
