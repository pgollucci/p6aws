######################################################################
#<
#
# Function:
#      = p6_aws_shield_emergency_contact_settings_update()
#
#
#
#>
######################################################################
p6_aws_shield_emergency_contact_settings_update() {

    p6_run_write_cmd aws shield update-emergency-contact-settings "$@"
}