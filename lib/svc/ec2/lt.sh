######################################################################
#<
#
# Function: p6_aws_svc_ec2_launch_templates_list()
#
#>
######################################################################
p6_aws_svc_ec2_launch_templates_list() {

    p6_aws_cmd ec2 describe-launch-templates \
        --output text \
        --query "'LaunchTemplates[].[LaunchTemplateId, LaunchTemplateName, DefaultVersionNumber, LatestVersionNumber]'"
}