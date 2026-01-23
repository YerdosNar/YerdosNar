#!/usr/bin/env bash

if [[ "$1" == "-s" || "$1" == "--streak" ]]; then
    # 1. Download Streak Stats
    curl -L "https://streak-stats.demolab.com?user=YerdosNar&theme=tokyonight&hide_border=true" -o assets/stats/streak.svg
elif [[ "$1" == "-m" || "$1" == "--summary" ]]; then
    # 2. Download Summary Card (Note: I switched this to HTTPS)
    curl -L "https://github-profile-summary-cards.vercel.app/api/cards/profile-details?username=YerdosNar&theme=tokyonight" -o assets/stats/summary.svg
elif [[ "$1" == "-t" || "$1" == "--top-langs" ]]; then
    # 3. Download Top Languages
    curl -L "https://github-readme-stats.vercel.app/api/top-langs/?username=YerdosNar&layout=compact&theme=tokyonight&hide_border=true&langs_count=10" -o assets/stats/top-langs.svg
elif [[ "$1" == "-st" || "$1" == "--stats" ]]; then
    # 4. Download Main Stats
    curl -L "https://github-readme-stats.vercel.app/api?username=YerdosNar&show_icons=true&theme=tokyonight&hide_border=true&include_all_commits=true&count_private=true" -o assets/stats/main-stats.svg
elif [[ "$1" == "-a" || "$1" == "--all" ]]; then
    # 1. Download Streak Stats
    curl -L "https://streak-stats.demolab.com?user=YerdosNar&theme=tokyonight&hide_border=true" -o assets/stats/streak.svg
    # 2. Download Summary Card (Note: I switched this to HTTPS)
    curl -L "https://github-profile-summary-cards.vercel.app/api/cards/profile-details?username=YerdosNar&theme=tokyonight" -o assets/stats/summary.svg
    # 3. Download Top Languages
    curl -L "https://github-readme-stats.vercel.app/api/top-langs/?username=YerdosNar&layout=compact&theme=tokyonight&hide_border=true&langs_count=10" -o assets/stats/top-langs.svg
    # 4. Download Main Stats
    curl -L "https://github-readme-stats.vercel.app/api?username=YerdosNar&show_icons=true&theme=tokyonight&hide_border=true&include_all_commits=true&count_private=true" -o assets/stats/main-stats.svg
fi
