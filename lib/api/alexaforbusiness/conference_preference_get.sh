######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_conference_preference_get()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_conference_preference_get() {

    p6_run_read_cmd aws alexaforbusiness get-conference-preference "$@"
}