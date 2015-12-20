class Translator
    def update(ctx)
        yes = ctx.flags.include?('y') ? ' -y' : ''

        if ctx.args.length == 0
            return 'sudo apt-get update && sudo apt-get'+yes+' upgrade'
        elsif ctx.args.length >= 1 and ctx.args[0] == 'all'
            return 'sudo apt-get update && sudo apt-get'+yes+' dist-upgrade'
        end

        raise "Usage: now update [-y] [all]"
    end

    def install(ctx)
        return 'sudo apt-get install ' + ctx.args[0]
    end

    def shutdown(ctx)
        return 'sudo shutdown -hP now'
    end
end
