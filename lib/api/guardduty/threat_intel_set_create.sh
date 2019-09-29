######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_threat_intel_set_create(detector_id, name, format, location, activate)
#
# Arg(s):
#    detector_id - 
#    name - 
#    format - 
#    location - 
#    activate - 
#
#
#>
######################################################################
p6_aws_guardduty_threat_intel_set_create() {
    local detector_id="$1"
    local name="$2"
    local format="$3"
    local location="$4"
    local activate="$5"
    shift 5

    p6_run_write_cmd aws guardduty create-threat-intel-set --detector-id $detector_id --name $name --format $format --location $location --activate $activate "$@"
}