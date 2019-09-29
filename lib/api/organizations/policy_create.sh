######################################################################
#<
#
# Function:
#      = p6_aws_organizations_policy_create(content, description, name, type)
#
# Arg(s):
#    content - 
#    description - 
#    name - 
#    type - 
#
#
#>
######################################################################
p6_aws_organizations_policy_create() {
    local content="$1"
    local description="$2"
    local name="$3"
    local type="$4"
    shift 4

    p6_run_write_cmd aws organizations create-policy --content $content --description $description --name $name --type $type "$@"
}