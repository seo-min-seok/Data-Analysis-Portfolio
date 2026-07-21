# ⚽ EPL Match Analysis

## Project Overview

EPL 경기 데이터를 활용하여
승패와 가장 강한 연관성을 보이는 경기 지표를 분석한 프로젝트입니다.

기존 프로젝트의 한계를 보완하기 위해 Python 기반으로 프로젝트를 리마스터하여
추가적인 통계 검정과 효과크기 분석을 수행했습니다.

---

## Tech Stack

- R
- Python

---

## Files

### Original Project

- [league.xlsx](league.xlsx) : Original Dataset
- [epl_original_Code.R](epl_original_Code.R) : Original R Code
- [epl_original_report.pdf](epl_original_report.pdf) : Original Report

### Remastered Project

- [epl_remastered_Code.ipynb](epl_remastered_Code.ipynb) : Remastered Python Code

---

## Key Improvement

기존 프로젝트
- 평균 비교 중심의 분석

↓

리마스터 프로젝트
- Paired t-test
- Cohen's d (효과크기)
- 데이터 시각화
- 통계적 근거를 기반으로 핵심 경기 지표 도출

---

## Key Insight

- 유효슈팅(On Target)과 슈팅 정확도(Accuracy)가 승리와 가장 강한 연관성을 보임
- 단순 슈팅 수보다 공격의 질이 승리에 더 중요한 요인임을 확인
