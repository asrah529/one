import tkinter as tk
from tkinter import messagebox

friends = []

def add_friend():
    name = name_entry.get().strip()
    age = age_entry.get().strip()
    if not name:
        messagebox.showwarning("Input Error", "Please enter a name!")
        return
    friends.append(f"{name} ({age or 'N/A'})")
    name_entry.delete(0, tk.END)
    age_entry.delete(0, tk.END)
    refresh_list()

def delete_friend():
    selected = listbox.curselection()
    if not selected:
        messagebox.showwarning("Select", "Select a friend to delete!")
        return
    friends.pop(selected[0])
    refresh_list()

def refresh_list():
    listbox.delete(0, tk.END)
    for f in friends:
        listbox.insert(tk.END, f)

# Window setup
root = tk.Tk()
root.title("My Friends App")
root.geometry("350x450")

tk.Label(root, text="Friend Name:").pack(pady=(10, 0))
name_entry = tk.Entry(root, width=30)
name_entry.pack()

tk.Label(root, text="Age:").pack(pady=(10, 0))
age_entry = tk.Entry(root, width=30)
age_entry.pack()

tk.Button(root, text="Add Friend", command=add_friend, bg="lightgreen").pack(pady=10)

listbox = tk.Listbox(root, width=40, height=12)
listbox.pack(pady=5)

tk.Button(root, text="Delete Selected", command=delete_friend, bg="tomato").pack(pady=5)

root.mainloop()
