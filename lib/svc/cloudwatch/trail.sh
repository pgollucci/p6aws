######################################################################
#<
#
# Function: p6_aws_svc_logs_trail_watch_jq()
#
#>
######################################################################
p6_aws_svc_logs_trail_watch_jq() {

    local group
    group=$(p6_aws_svc_logs_groups_list | grep TrailLogGroup | head -1)

    p6_aws_svc_logs_watch "$group" | \
    while read -r line; do
        json=$(echo "$line" | sed -e 's,^.*_CloudTrail_us-east-1 ,,')
        echo "$json" | jq '{time: .eventTime, name: .eventName, region: .awsRegion, from: .userIdentity.invokedBy, by: .eventSource, params: .requestParameters}'
    done
}