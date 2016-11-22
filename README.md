# healthInstKr

한국의 각급 보건기관(종합병원, 의원, 조산원, 보건소, 약국 등)의 주소, 좌표(lat, lng), 연락처 및 설립일 등의 정보를 담은 데이터 프레임을 생성합니다.

## data source
공공보건포털(g-health.kr)의 정보를 실시간으로 가져옵니다.

## Install

> install.packages("devtools") # if you don't have devtools

> devtools::install_github("yonghah/healthInstKr")

## 사용법

보건기관 코드를 인자로 주어 실행시킵니다. (보건소=71)

> df_bogeonso <- get_health_inst(71)

보건기관 코드를 빈값으로 줄 경우 모든 보건 기관을 반환합니다. 시간이 걸립니다.

> df_all <- get_health_inst('')

## dependency

* httr
* jsonlite

## 보건기관 코드


|cl_cd   |cl_cd_nm|
|--------|--------|
|1  |상급종합|
|11 |종합병원|
|21 |병원|
|28 |요양병원|
|31 |의원|
|41 |치과병원|
|51 |치과의원|
|61 |조산원|
|71 |보건소|
|72 |보건지소|
|73 |보건진료소|
|75 |보건의료원|
|81 |약국|
|92 |한방병원|
|93 |한의원|
