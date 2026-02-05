#!/usr/bin/env bash

if [[ $# == 0 || "$1" == "-h" || "$1" == "--help" ]]; then
    echo "+===================================================+"
    echo "| Usage: ./run.sh <options>                         |"
    echo "+---------------------------------------------------+"
    echo "| Options:                                          |"
    echo "|   -s,  --streak       Show streak                 |"
    echo "|   -m,  --summary      Show summary                |"
    echo "|   -t,  --top-langs    Show top languages          |"
    echo "|   -st, --stats        Show stats                  |"
    echo "|   -a,  --all          Show all listed above       |"
    echo "|   -h,  --help         Show help message           |"
    echo "+---------------------------------------------------+"
    echo "| Example:                                          |"
    echo "|   ./run.sh --all      Downloads all the images    |"
    echo "+===================================================+"
fi

streak() {
    echo -e "\033[32mDownloading STREAK\033[0m"
    # 1. Download Streak Stats
    curl -L "https://streak-stats.demolab.com?user=YerdosNar&theme=tokyonight&hide_border=true" -o assets/stats/streak.svg
}

summary() {
    echo -e "\033[32mDownloading SUMMARY\033[0m"
    # 2. Download Summary Card (Note: I switched this to HTTPS)
    curl -L "https://github-profile-summary-cards.vercel.app/api/cards/profile-details?username=YerdosNar&theme=tokyonight" -o assets/stats/summary.svg
}

top-langs() {
    echo -e "\033[32mDownloading TOP-LANGS\033[0m"
    # 3. Download Top Languages
    curl -L "https://github-readme-stats.vercel.app/api/top-langs/?username=YerdosNar&layout=compact&theme=tokyonight&hide_border=true&langs_count=10" -o assets/stats/top-langs.svg
}

stats() {
    echo -e "\033[32mDownloading STATS\033[0m"
    # 4. Download Main Stats
    curl -L "https://github-readme-stats.vercel.app/api?username=YerdosNar&show_icons=true&theme=tokyonight&hide_border=true&include_all_commits=true&count_private=true" -o assets/stats/main-stats.svg
}

if [[ "$1" == "-s" || "$1" == "--streak" ]]; then
    streak
elif [[ "$1" == "-m" || "$1" == "--summary" ]]; then
    summary
elif [[ "$1" == "-t" || "$1" == "--top-langs" ]]; then
    top-langs
elif [[ "$1" == "-st" || "$1" == "--stats" ]]; then
    stats
elif [[ "$1" == "-a" || "$1" == "--all" ]]; then
    streak
    summary
    top-langs
    stats
fi
