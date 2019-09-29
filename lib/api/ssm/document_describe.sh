######################################################################
#<
#
# Function:
#      = p6_aws_ssm_document_describe(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_ssm_document_describe() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-document --name $name "$@"
}