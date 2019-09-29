######################################################################
#<
#
# Function:
#      = p6_aws_ssm_document_update(content, name)
#
# Arg(s):
#    content - 
#    name - 
#
#
#>
######################################################################
p6_aws_ssm_document_update() {
    local content="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws ssm update-document --content $content --name $name "$@"
}