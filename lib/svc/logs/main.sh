# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_logs_svc_watch(log_group_name)
#
#  Args:
#	log_group_name -
#
#>
######################################################################
p6_aws_logs_svc_watch() {
    local log_group_name="$1"

    aws logs get "$log_group_name" ALL --watch
}

p6_aws_logs_svc_watch_jq() {

    p6_aws_logs_svc_watch "$@" |
        while read -r line; do
            json=$(echo "$line" | sed -e 's,^.*121789937014_CloudTrail_us-east-1 ,,')
            echo "$json" | jq '.'
        done
}
