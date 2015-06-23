open System

let encrypt (word : string) = 
    let key = "KCQ"
    [ 0..(word.Length - 1) ]
    |> Seq.map (fun idx -> Convert.ToChar(Convert.ToInt32 word.[idx] ^^^ Convert.ToInt32 key.[idx % key.Length]))
    |> String.Concat

[<EntryPoint>]
let main argv = 
    let encrypted = encrypt "IzzyDev"
    printfn "Encrypted: %s" encrypted
    let decrypted = encrypt encrypted
    printfn "Decrypted: %s" decrypted
    0