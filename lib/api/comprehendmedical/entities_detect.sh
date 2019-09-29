######################################################################
#<
#
# Function:
#      = p6_aws_comprehendmedical_entities_detect(text)
#
# Arg(s):
#    text - 
#
#
#>
######################################################################
p6_aws_comprehendmedical_entities_detect() {
    local text="$1"
    shift 1

    p6_run_write_cmd aws comprehendmedical detect-entities --text $text "$@"
}