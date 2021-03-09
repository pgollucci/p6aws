# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_svc_logs_watch(log_group_name)
#
#  Args:
#	log_group_name -
#
#>
######################################################################
p6_aws_svc_logs_watch() {
    local log_group_name="$1"

    awslogs get "$log_group_name" ALL --watch
}

######################################################################
#<
#
# Function: p6_aws_svc_logs_watch_jq(log_group_name)
#
#  Args:
#	log_group_name -
#
#>
######################################################################
p6_aws_svc_logs_watch_jq() {
    local log_group_name="$1"

    p6_aws_svc_logs_watch "$log_group_name" | \
        while read -r line; do
            json=$(echo "$line" | sed -e 's,^.*_CloudTrail_us-east-1 ,,')
            echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
            echo "$json" | jq '.'
            echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
        done
}

######################################################################
#<
#
# Function: p6_aws_svc_logs_groups_list()
#
#>
######################################################################
p6_aws_svc_logs_groups_list() {

    awslogs groups
}