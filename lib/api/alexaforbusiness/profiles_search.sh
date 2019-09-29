######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_profiles_search()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_profiles_search() {

    p6_run_write_cmd aws alexaforbusiness search-profiles "$@"
}