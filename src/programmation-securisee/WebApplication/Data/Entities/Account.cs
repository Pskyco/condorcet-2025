namespace WebApplication.Data.Entities
{
    public class Account
    {
        public int Id { get; set; }
        public decimal Balance { get; set; }
        public string Number { get; set; }

        public override string ToString()
        {
            return $"Account n° {Number} (#{Id}) with balance of {Balance}€";
        }
    }
}