######################################################################
#<
#
# Function:
#      = p6_aws_worklink_website_certificate_authorities_list(fleet_arn)
#
# Arg(s):
#    fleet_arn - 
#
#
#>
######################################################################
p6_aws_worklink_website_certificate_authorities_list() {
    local fleet_arn="$1"
    shift 1

    p6_run_read_cmd aws worklink list-website-certificate-authorities --fleet-arn $fleet_arn "$@"
}