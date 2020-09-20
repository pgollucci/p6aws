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
p6_aws_eks_prompt_info() {

  local str

  if ! p6_string_blank "$AWS_EKS_CLUSTER_NAME"; then
    str="eks:      cluster=[$AWS_EKS_CLUSTER_NAME]"
  fi  

  if p6_string_blank "$str"; then
    p6_return_void
  else
    p6_return_str "$str"
  fi
}
