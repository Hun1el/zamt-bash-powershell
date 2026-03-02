RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
GRAY='\033[37m'
MARGENTA='\033[35m'
FON_YELLOW='\033[43m'
FON_ORANGE='\033[103m'
FON_CYAN='\033[46m'
RESET='\033[0m'

echo "************ Задание 1 *********************"
menu=("Информация об интерфейсах" "Настройка интерфейса" "Пинговать" "Quit")
echo -e "         Меню скрипта:"
echo -e "${FON_YELLOW}${RED}${menu[0]}${RESET}"
echo -e "${FON_CYAN}${BLUE}${menu[1]}${RESET}"
echo -e "${FON_ORANGE}${MARGENTA}${menu[2]}${RESET}"
echo -e "${GREEN}${menu[3]}${RESET}"

echo "************ Задание 2 *********************"
declare -A string=(
    ["remove"]="Я догадываюсь, что ты догадываешься, что я догадываюсь, что ты догадываешься, что я догадываюсь"
    ["slice"]="Я знаю, что я знаю, что я знаю, что я знаю, что я знаю"
    ["symbol"]="Мастер и Маргарита, Михаил Булгаков"
)
remove=$(echo "${string[remove]//что/}")
echo -e "${RED}${remove}${RESET}"

echo -en "${YELLOW}${string[slice]:0:8} ${RESET}"
echo -e "${YELLOW}${string[slice]: -11} ${RESET}"

symbol=$(echo "${string[symbol]:0:18}")
symbol="${symbol^^}"
echo -e "${GRAY}${symbol}${RESET}"

echo "************ Задание 3 *********************"
declare -a log=({0..9}.log)
echo ${log[@]}
unset log[{5..9}]
echo ${log[@]}
declare -a log=(${log[@]^})
echo ${log[@]//.log/.gz}