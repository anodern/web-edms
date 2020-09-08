package com.anodern.teach;

public interface IDB<T> {
    public T getEntity(int no);
    public int update(int no);
    public int delete(int no);
}
