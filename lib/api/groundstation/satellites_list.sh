######################################################################
#<
#
# Function:
#	p6_aws_groundstation_satellites_list()
#
#>
######################################################################
p6_aws_groundstation_satellites_list() {

    p6_run_read_cmd aws groundstation list-satellites "$@"
}