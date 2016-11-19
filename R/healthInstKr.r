#' get health institutes data from g-health.kr
#' depedency: httr, jsonlite
#'
#' @param code institution type code. See the codes below.
#' @return data frame with institute name, address, xy coord, type
#' @examples
#'  df_bogeonso <- get_health_inst(71)
#'  df_all <- get_health_inst('')

# 보건기관 코드
#    cl_cd   cl_cd_nm
# 1      1   상급종합
# 2     11   종합병원
# 3     21       병원
# 4     28   요양병원
# 5     31       의원
# 6     41   치과병원
# 7     51   치과의원
# 8     61     조산원
# 9     71     보건소
# 10    72   보건지소
# 11    73 보건진료소
# 12    75 보건의료원
# 13    81       약국
# 14    92   한방병원
# 15    93     한의원

get_health_inst <- function(code) {
  pl <- list(cl_cd=code, rows=130000, cpage=1)
  r <- httr::POST(url,
            body = pl,
            add_headers(
              'Content_Type' =
                'application/x-www-form-urlencoded; charset=UTF-8'
            )
  )
  res <- httr::content(r,"text")
  df <- jsonlite::fromJSON(res)
  return(df)
}
