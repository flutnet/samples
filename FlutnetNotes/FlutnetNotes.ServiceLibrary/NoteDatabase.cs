﻿using System;
using Flutnet.ServiceModel;
using System.Collections.Generic;
using System.Threading.Tasks;
using SQLite;


namespace FlutnetNotes.ServiceLibrary
{
    /// <summary>
    /// Xamarin Cross Platform Database that we expose to Flutter
    /// </summary>
    [PlatformService]
    public class NoteDatabase
    {
        readonly SQLiteAsyncConnection _database;

        public NoteDatabase(string dbPath)
        {
            _database = new SQLiteAsyncConnection(dbPath);
            _database.CreateTableAsync<Note>().Wait();
        }

        [PlatformOperation]
        public Task<List<Note>> GetNotesAsync()
        {
            return _database.Table<Note>().ToListAsync();
        }

        [PlatformOperation]
        public Task<Note> GetNoteAsync(int id)
        {
            return _database.Table<Note>()
                            .Where(i => i.ID == id)
                            .FirstOrDefaultAsync();
        }

        [PlatformOperation]
        public async Task<Note> SaveNoteAsync(Note note)
        {
            if (note.ID != 0)
            {
                await _database.UpdateAsync(note);
                return note;
            }
            else
            {
                await _database.InsertAsync(note);
                return note;
            }
        }

        [PlatformOperation]
        public Task<int> DeleteNoteAsync(Note note)
        {
            return _database.DeleteAsync(note);
        }

    }
}
