######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_rules_describe()
#
#
#
#>
######################################################################
p6_aws_elbv2_rules_describe() {

    p6_run_read_cmd aws elbv2 describe-rules "$@"
}