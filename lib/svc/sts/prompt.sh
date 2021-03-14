######################################################################
#<
#
# Function: str str = p6_aws_sts_prompt_info(creds)
#
#  Args:
#	creds -
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_aws_sts_prompt_info() {
  local creds="$1"

  local str
  if p6_file_exists "$creds"; then
    local mtime=$(p6_dt_mtime "$creds")
    local now=$(p6_dt_now_epoch_seconds)
    local diff=$(p6_math_sub "$now" "$mtime")

    if p6_math_gt "$diff" "7200"; then
      str=""
    elif p6_math_gt "$diff" "3600"; then
      str=$(p6_color_ize "red" "black" "sts:\t$diff")
    elif p6_math_gt "$diff" "3500"; then
      str=$(p6_color_ize "yellow" "black" "sts:\t$diff")
    else
      str="sts:\t$diff"
    fi

  fi

  p6_return_str "$str"
}
