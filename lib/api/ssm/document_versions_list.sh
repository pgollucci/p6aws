######################################################################
#<
#
# Function:
#      = p6_aws_ssm_document_versions_list(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_ssm_document_versions_list() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws ssm list-document-versions --name $name "$@"
}