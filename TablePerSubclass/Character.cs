using System;
namespace TablePerSubclass
{
    public abstract class Character
    {
        public virtual int Id { get; set; }
        public virtual string Name { get; set; }

        public Character() { }

        public override string ToString()
        {
            return string.Format("[Character: Id={0}, Name={1}]", Id, Name);
        }
    }
}
