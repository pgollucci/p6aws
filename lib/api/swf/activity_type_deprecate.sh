######################################################################
#<
#
# Function:
#      = p6_aws_swf_activity_type_deprecate(domain, activity_type)
#
# Arg(s):
#    domain - 
#    activity_type - 
#
#
#>
######################################################################
p6_aws_swf_activity_type_deprecate() {
    local domain="$1"
    local activity_type="$2"
    shift 2

    p6_run_write_cmd aws swf deprecate-activity-type --domain $domain --activity-type $activity_type "$@"
}