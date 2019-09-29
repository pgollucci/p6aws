######################################################################
#<
#
# Function:
#      = p6_aws_ssm_ops_item_create(description, source, title)
#
# Arg(s):
#    description - 
#    source - 
#    title - 
#
#
#>
######################################################################
p6_aws_ssm_ops_item_create() {
    local description="$1"
    local source="$2"
    local title="$3"
    shift 3

    p6_run_write_cmd aws ssm create-ops-item --description $description --source $source --title $title "$@"
}