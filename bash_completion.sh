_cargo() {
    local i cur prev opts cmd
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cmd=""
    opts=""

    for i in ${COMP_WORDS[@]}
    do
        case "${cmd},${i}" in
            ",$1")
                cmd="cargo"
                ;;
            cargo,espflash)
                cmd="cargo__espflash"
                ;;
            cargo,help)
                cmd="cargo__help"
                ;;
            cargo__espflash,board-info)
                cmd="cargo__espflash__board__info"
                ;;
            cargo__espflash,checksum-md5)
                cmd="cargo__espflash__checksum__md5"
                ;;
            cargo__espflash,completions)
                cmd="cargo__espflash__completions"
                ;;
            cargo__espflash,erase-flash)
                cmd="cargo__espflash__erase__flash"
                ;;
            cargo__espflash,erase-parts)
                cmd="cargo__espflash__erase__parts"
                ;;
            cargo__espflash,erase-region)
                cmd="cargo__espflash__erase__region"
                ;;
            cargo__espflash,flash)
                cmd="cargo__espflash__flash"
                ;;
            cargo__espflash,help)
                cmd="cargo__espflash__help"
                ;;
            cargo__espflash,hold-in-reset)
                cmd="cargo__espflash__hold__in__reset"
                ;;
            cargo__espflash,monitor)
                cmd="cargo__espflash__monitor"
                ;;
            cargo__espflash,partition-table)
                cmd="cargo__espflash__partition__table"
                ;;
            cargo__espflash,read-flash)
                cmd="cargo__espflash__read__flash"
                ;;
            cargo__espflash,reset)
                cmd="cargo__espflash__reset"
                ;;
            cargo__espflash,save-image)
                cmd="cargo__espflash__save__image"
                ;;
            cargo__espflash__help,board-info)
                cmd="cargo__espflash__help__board__info"
                ;;
            cargo__espflash__help,checksum-md5)
                cmd="cargo__espflash__help__checksum__md5"
                ;;
            cargo__espflash__help,completions)
                cmd="cargo__espflash__help__completions"
                ;;
            cargo__espflash__help,erase-flash)
                cmd="cargo__espflash__help__erase__flash"
                ;;
            cargo__espflash__help,erase-parts)
                cmd="cargo__espflash__help__erase__parts"
                ;;
            cargo__espflash__help,erase-region)
                cmd="cargo__espflash__help__erase__region"
                ;;
            cargo__espflash__help,flash)
                cmd="cargo__espflash__help__flash"
                ;;
            cargo__espflash__help,help)
                cmd="cargo__espflash__help__help"
                ;;
            cargo__espflash__help,hold-in-reset)
                cmd="cargo__espflash__help__hold__in__reset"
                ;;
            cargo__espflash__help,monitor)
                cmd="cargo__espflash__help__monitor"
                ;;
            cargo__espflash__help,partition-table)
                cmd="cargo__espflash__help__partition__table"
                ;;
            cargo__espflash__help,read-flash)
                cmd="cargo__espflash__help__read__flash"
                ;;
            cargo__espflash__help,reset)
                cmd="cargo__espflash__help__reset"
                ;;
            cargo__espflash__help,save-image)
                cmd="cargo__espflash__help__save__image"
                ;;
            cargo__help,espflash)
                cmd="cargo__help__espflash"
                ;;
            cargo__help,help)
                cmd="cargo__help__help"
                ;;
            cargo__help__espflash,board-info)
                cmd="cargo__help__espflash__board__info"
                ;;
            cargo__help__espflash,checksum-md5)
                cmd="cargo__help__espflash__checksum__md5"
                ;;
            cargo__help__espflash,completions)
                cmd="cargo__help__espflash__completions"
                ;;
            cargo__help__espflash,erase-flash)
                cmd="cargo__help__espflash__erase__flash"
                ;;
            cargo__help__espflash,erase-parts)
                cmd="cargo__help__espflash__erase__parts"
                ;;
            cargo__help__espflash,erase-region)
                cmd="cargo__help__espflash__erase__region"
                ;;
            cargo__help__espflash,flash)
                cmd="cargo__help__espflash__flash"
                ;;
            cargo__help__espflash,hold-in-reset)
                cmd="cargo__help__espflash__hold__in__reset"
                ;;
            cargo__help__espflash,monitor)
                cmd="cargo__help__espflash__monitor"
                ;;
            cargo__help__espflash,partition-table)
                cmd="cargo__help__espflash__partition__table"
                ;;
            cargo__help__espflash,read-flash)
                cmd="cargo__help__espflash__read__flash"
                ;;
            cargo__help__espflash,reset)
                cmd="cargo__help__espflash__reset"
                ;;
            cargo__help__espflash,save-image)
                cmd="cargo__help__espflash__save__image"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        cargo)
            opts="-h -V --help --version espflash help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash)
            opts="-s -h -V --skip-update-check --help --version board-info completions erase-flash erase-parts erase-region flash hold-in-reset monitor partition-table read-flash reset save-image checksum-md5 help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__board__info)
            opts="-a -B -b -c -C -p -s -h -V --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --skip-update-check --help --version"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__checksum__md5)
            opts="-a -l -a -B -b -c -C -p -s -h -V --address --length --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --skip-update-check --help --version"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --address)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --length)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -l)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__completions)
            opts="-s -h -V --skip-update-check --help --version bash elvish fish powershell zsh"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__erase__flash)
            opts="-a -B -b -c -C -p -s -h -V --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --skip-update-check --help --version"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__erase__parts)
            opts="-a -B -b -c -C -p -s -h -V --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --partition-table --package --skip-update-check --help --version [LABELS]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --partition-table)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__erase__region)
            opts="-a -B -b -c -C -p -s -h -V --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --skip-update-check --help --version <OFFSET> <SIZE>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__flash)
            opts="-Z -f -m -s -a -B -b -c -C -p -L -M -T -s -h -V --bin --example --features --no-default-features --frozen --locked --package --release --target --target-dir --flash-freq --flash-mode --flash-size --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --erase-parts --erase-data-parts --log-format --monitor --monitor-baud --ram --no-verify --no-skip --bootloader --partition-table --partition-table-offset --target-app-partition --min-chip-rev --processors --skip-update-check --help --version"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --bin)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --example)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --target)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --target-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -Z)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --flash-freq)
                    COMPREPLY=($(compgen -W "12mhz 15mhz 16mhz 20mhz 24mhz 26mhz 30mhz 40mhz 48mhz 60mhz 80mhz" -- "${cur}"))
                    return 0
                    ;;
                -f)
                    COMPREPLY=($(compgen -W "12mhz 15mhz 16mhz 20mhz 24mhz 26mhz 30mhz 40mhz 48mhz 60mhz 80mhz" -- "${cur}"))
                    return 0
                    ;;
                --flash-mode)
                    COMPREPLY=($(compgen -W "qio qout dio dout" -- "${cur}"))
                    return 0
                    ;;
                -m)
                    COMPREPLY=($(compgen -W "qio qout dio dout" -- "${cur}"))
                    return 0
                    ;;
                --flash-size)
                    COMPREPLY=($(compgen -W "256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb 128mb 256mb" -- "${cur}"))
                    return 0
                    ;;
                -s)
                    COMPREPLY=($(compgen -W "256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb 128mb 256mb" -- "${cur}"))
                    return 0
                    ;;
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --erase-parts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --erase-data-parts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-format)
                    COMPREPLY=($(compgen -W "defmt serial" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "defmt serial" -- "${cur}"))
                    return 0
                    ;;
                --monitor-baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --bootloader)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --partition-table)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -T)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --partition-table-offset)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --target-app-partition)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --min-chip-rev)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --processors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help)
            opts="board-info completions erase-flash erase-parts erase-region flash hold-in-reset monitor partition-table read-flash reset save-image checksum-md5 help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__board__info)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__checksum__md5)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__completions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__erase__flash)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__erase__parts)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__erase__region)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__flash)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__hold__in__reset)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__monitor)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__partition__table)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__read__flash)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__reset)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__help__save__image)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__hold__in__reset)
            opts="-a -B -b -c -C -p -s -h -V --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --skip-update-check --help --version"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__monitor)
            opts="-a -B -b -c -C -p -e -L -s -h -V --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --elf --non-interactive --log-format --processors --skip-update-check --help --version"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --elf)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-format)
                    COMPREPLY=($(compgen -W "defmt serial" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "defmt serial" -- "${cur}"))
                    return 0
                    ;;
                --processors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__partition__table)
            opts="-o -s -h -V --output --to-binary --to-csv --skip-update-check --help --version <FILE>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__read__flash)
            opts="-a -B -b -c -C -p -s -h -V --block-size --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --max-in-flight --skip-update-check --help --version <OFFSET> <SIZE> <FILE>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --block-size)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --max-in-flight)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__reset)
            opts="-a -B -b -c -C -p -s -h -V --after --baud --before --chip --confirm-port --list-all-ports --no-stub --port --skip-update-check --help --version"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --after)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "hard-reset no-reset no-reset-no-stub" -- "${cur}"))
                    return 0
                    ;;
                --baud)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -B)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --before)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -W "default-reset no-reset no-reset-no-sync usb-reset" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__espflash__save__image)
            opts="-Z -f -m -s -P -x -T -s -h -V --bin --example --features --no-default-features --frozen --locked --package --release --target --target-dir --flash-freq --flash-mode --flash-size --chip --merge --skip-padding --xtal-freq --bootloader --partition-table --partition-table-offset --target-app-partition --min-chip-rev --skip-update-check --help --version <FILE>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --bin)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --example)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --target)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --target-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -Z)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --flash-freq)
                    COMPREPLY=($(compgen -W "12mhz 15mhz 16mhz 20mhz 24mhz 26mhz 30mhz 40mhz 48mhz 60mhz 80mhz" -- "${cur}"))
                    return 0
                    ;;
                -f)
                    COMPREPLY=($(compgen -W "12mhz 15mhz 16mhz 20mhz 24mhz 26mhz 30mhz 40mhz 48mhz 60mhz 80mhz" -- "${cur}"))
                    return 0
                    ;;
                --flash-mode)
                    COMPREPLY=($(compgen -W "qio qout dio dout" -- "${cur}"))
                    return 0
                    ;;
                -m)
                    COMPREPLY=($(compgen -W "qio qout dio dout" -- "${cur}"))
                    return 0
                    ;;
                --flash-size)
                    COMPREPLY=($(compgen -W "256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb 128mb 256mb" -- "${cur}"))
                    return 0
                    ;;
                -s)
                    COMPREPLY=($(compgen -W "256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb 128mb 256mb" -- "${cur}"))
                    return 0
                    ;;
                --chip)
                    COMPREPLY=($(compgen -W "esp32 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4 esp32s2 esp32s3" -- "${cur}"))
                    return 0
                    ;;
                --xtal-freq)
                    COMPREPLY=($(compgen -W "26mhz 32mhz 40mhz" -- "${cur}"))
                    return 0
                    ;;
                -x)
                    COMPREPLY=($(compgen -W "26mhz 32mhz 40mhz" -- "${cur}"))
                    return 0
                    ;;
                --bootloader)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --partition-table)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -T)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --partition-table-offset)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --target-app-partition)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --min-chip-rev)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help)
            opts="espflash help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash)
            opts="board-info completions erase-flash erase-parts erase-region flash hold-in-reset monitor partition-table read-flash reset save-image checksum-md5"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__board__info)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__checksum__md5)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__completions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__erase__flash)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__erase__parts)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__erase__region)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__flash)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__hold__in__reset)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__monitor)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__partition__table)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__read__flash)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__reset)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__espflash__save__image)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        cargo__help__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

if [[ "${BASH_VERSINFO[0]}" -eq 4 && "${BASH_VERSINFO[1]}" -ge 4 || "${BASH_VERSINFO[0]}" -gt 4 ]]; then
    complete -F _cargo -o nosort -o bashdefault -o default cargo
else
    complete -F _cargo -o bashdefault -o default cargo
fi
