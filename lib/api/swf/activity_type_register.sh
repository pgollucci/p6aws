######################################################################
#<
#
# Function:
#      = p6_aws_swf_activity_type_register(domain, name, activity_version)
#
# Arg(s):
#    domain - 
#    name - 
#    activity_version - 
#
#
#>
######################################################################
p6_aws_swf_activity_type_register() {
    local domain="$1"
    local name="$2"
    local activity_version="$3"
    shift 3

    p6_run_write_cmd aws swf register-activity-type --domain $domain --name $name --activity-version $activity_version "$@"
}