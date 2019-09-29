######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_match_backfill_start(configuration_name, game_session_arn, players)
#
# Arg(s):
#    configuration_name - 
#    game_session_arn - 
#    players - 
#
#
#>
######################################################################
p6_aws_gamelift_match_backfill_start() {
    local configuration_name="$1"
    local game_session_arn="$2"
    local players="$3"
    shift 3

    p6_run_write_cmd aws gamelift start-match-backfill --configuration-name $configuration_name --game-session-arn $game_session_arn --players $players "$@"
}