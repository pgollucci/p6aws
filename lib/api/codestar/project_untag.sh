######################################################################
#<
#
# Function:
#      = p6_aws_codestar_project_untag(id, tags)
#
# Arg(s):
#    id - 
#    tags - 
#
#
#>
######################################################################
p6_aws_codestar_project_untag() {
    local id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws codestar untag-project --id $id --tags $tags "$@"
}