class Translator
    def update(ctx)
        return 'sudo pacman -Sy'+(ctx.flags.include?('y') ? 'y' : '')+'u'
    end

    def install(ctx)
        noconfirm = ctx.flags.include?('f') ? '--noconfirm ' : ''
        return 'sudo pacman -S ' + noconfirm + ctx.args[0]
    end

    def shutdown(ctx)
        return 'sudo systemctl poweroff'
    end
end
