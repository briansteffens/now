class Translator
    def update(ctx)
        return 'sudo pacman -Sy'+(ctx.flags.include?('y') ? 'y' : '')+'u'
    end

    def shutdown(ctx)
        return 'sudo systemctl poweroff'
    end
end
