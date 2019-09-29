######################################################################
#<
#
# Function:
#      = p6_aws_ec2_identity_id_format_describe(principal_arn)
#
# Arg(s):
#    principal_arn - 
#
#
#>
######################################################################
p6_aws_ec2_identity_id_format_describe() {
    local principal_arn="$1"
    shift 1

    p6_run_read_cmd aws ec2 describe-identity-id-format --principal-arn $principal_arn "$@"
}