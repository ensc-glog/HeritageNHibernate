using System;
namespace TablePerSubclass
{
    public class Player : Character
    {
        public virtual string Title { get; set; }

        public Player() { }

        public override string ToString()
        {
            return string.Format("[{0} Player: Title={1}]", base.ToString(), Title);
        }
    }
}
