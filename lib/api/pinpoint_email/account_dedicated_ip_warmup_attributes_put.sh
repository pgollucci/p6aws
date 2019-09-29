######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_account_dedicated_ip_warmup_attributes_put()
#
#
#
#>
######################################################################
p6_aws_pinpoint_email_account_dedicated_ip_warmup_attributes_put() {

    p6_run_write_cmd aws pinpoint-email put-account-dedicated-ip-warmup-attributes "$@"
}