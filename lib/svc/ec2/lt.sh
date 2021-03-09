######################################################################
#<
#
# Function: p6_aws_ec2_svc_launch_templates_list()
#
#>
######################################################################
p6_aws_ec2_svc_launch_templates_list() {

    p6_aws_cmd ec2 describe-launch-templates \
        --output text \
        --query "'LaunchTemplates[].[LaunchTemplateId, LaunchTemplateName, DefaultVersionNumber, LatestVersionNumber]'"
}