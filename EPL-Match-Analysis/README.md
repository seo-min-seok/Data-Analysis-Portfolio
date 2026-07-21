# ⚽ EPL Match Analysis

## Project Overview

EPL 경기 데이터를 활용하여
승리와 가장 강한 연관성을 보이는 핵심 경기 지표를 분석한 프로젝트입니다.

기존 프로젝트의 한계를 보완하기 위해 Python 기반으로 프로젝트를 리마스터하여
추가적인 통계 검정과 효과크기 분석을 수행했습니다.

<br>
  
## Tech Stack

- R
- Python

<br>

## Analysis Process

### Original Project
1. 전처리
2. 시즌별 평균 비교
3. 시즌별 경기 방식 변화 분석

### Remastered Project
1. 데이터 전처리
2. 대응표본 t-test
3. Cohen's d 효과크기 분석
4. 핵심 경기 지표 도출
5. 결과 해석 및 인사이트 발굴

<br>

## Key Improvement

| Original | Remastered |
|----------|------------|
| 평균 비교 중심 분석 | 대응표본 t-test |
| 단순 현상 비교 | Cohen's d 효과크기 분석 |
| 경험적 결론 | 통계적 근거 기반 결론 |

<br>
   
## Files

### Original Project

- [league.xlsx](league.xlsx) : Original Dataset
- [epl_original_Code.R](epl_original_Code.R) : Original R Code
- [epl_original_report.pdf](epl_original_report.pdf) : Original Report

### Remastered Project

- [epl_remastered_Code.ipynb](epl_remastered_Code.ipynb) : Remastered Python Code

<br>

## Analysis Results

- 대응표본 t-test 결과 대부분의 주요 경기 지표에서 승리팀과 패배팀 간 유의미한 차이 확인
- Cohen's d 분석 결과 유효슈팅(On Target)과 슈팅 정확도(Accuracy)가 가장 큰 효과크기를 보임

<br>

## Key Insight

- 공격의 양적 확대보다 공격의 질적 효율성이 승리에 더 밀접한 요인임을 통계적으로 뒷받침함
- 분석 결과를 바탕으로 전술 수립, 선수 영입, 훈련 방향에 대한 데이터 기반의 전략적 인사이트 발굴
