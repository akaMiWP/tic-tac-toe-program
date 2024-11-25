use anchor_lang::prelude::*;

declare_id!("HDFNRMGhso3CYCk79GdtrQgrj3MwuqhvRVfXF3TNePCc");

#[program]
pub mod tic_tac_toe {
    use super::*;

    pub fn initialize(ctx: Context<Initialize>) -> Result<()> {
        msg!("Greetings from: {:?}", ctx.program_id);
        Ok(())
    }
}

#[derive(Accounts)]
pub struct Initialize {}
