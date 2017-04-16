#define TICK_LIMIT_RUNNING 85
#define TICK_LIMIT_TO_RUN 80
#define TICK_LIMIT_MC 84
#define TICK_LIMIT_MC_INIT_DEFAULT 100    //was 98 on the PR, but I'd just as soon leave it be

#define TICK_CHECK ( world.tick_usage > CURRENT_TICKLIMIT ? stoplag() : 0 )
#define CHECK_TICK if (world.tick_usage > CURRENT_TICKLIMIT)  stoplag()
