######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_matchmaking_start(configuration_name, players)
#
# Arg(s):
#    configuration_name - 
#    players - 
#
#
#>
######################################################################
p6_aws_gamelift_matchmaking_start() {
    local configuration_name="$1"
    local players="$2"
    shift 2

    p6_run_write_cmd aws gamelift start-matchmaking --configuration-name $configuration_name --players $players "$@"
}