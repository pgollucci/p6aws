# shellcheck shell=sh

######################################################################
#<
#
# Function: p6_aws_svc_sns_topics_list()
#
#>
######################################################################
p6_aws_svc_sns_topics_list() {

    p6_aws_cmd sns list-topics \
        --output text \
        --query "'Topics[].[TopicArn]'"
}