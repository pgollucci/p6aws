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

    awslogs get "$log_group_name" ALL --watch
}

######################################################################
#<
#
# Function: p6_aws_logs_svc_watch_jq()
#
#>
######################################################################
p6_aws_logs_svc_watch_jq() {
    local log_group_name="$1"

    p6_aws_logs_svc_watch "$log_group_name" | \
        while read -r line; do
            json=$(echo "$line" | sed -e 's,^.*_CloudTrail_us-east-1 ,,')
            echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
            echo "$json" | jq '.'
            echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
        done
}

p6_aws_logs_svc_trail_watch_jq() {

    local group
    group=$(p6_aws_logs_svc_groups_list | grep TrailLogGroup | head -1)

    p6_aws_logs_svc_watch "$group" | \
    while read -r line; do
        json=$(echo "$line" | sed -e 's,^.*_CloudTrail_us-east-1 ,,')
        echo "$json" | jq '{time: .eventTime, name: .eventName, region: .awsRegion, from: .userIdentity.invokedBy, by: .eventSource, params: .requestParameters}'
    done
}

p6_aws_logs_svc_groups_list() {

    awslogs groups
}
