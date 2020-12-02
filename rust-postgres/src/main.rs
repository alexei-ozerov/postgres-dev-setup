use postgres::{Client, Error, NoTls};

fn main() -> Result<(), Error> {
    let mut client = Client::connect("postgresql://aozerov:0112@localhost/aozerov", NoTls)?;

    client.batch_execute(
        "
	insert into practice_summary values (2, 'Trumpet', 60, '2020-11-24');
  	commit;
    ",
    )?;

    Ok(())
}
