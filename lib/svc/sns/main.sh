# shellcheck shell=sh

######################################################################
#<
#
# Function: p6_aws_sns_svc_topics_list()
#
#>
######################################################################
p6_aws_sns_svc_topics_list() {

    p6_aws_cmd sns list-topics \
        --output text \
        --query "'Topics[].[TopicArn]'"
}