.class Lje;
.super Ljava/lang/Object;

# interfaces
.implements Ljw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljw",
        "<",
        "Ljn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljd;


# direct methods
.method constructor <init>(Ljd;)V
    .locals 0

    iput-object p1, p0, Lje;->a:Ljd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lje;->a:Ljd;

    invoke-static {v0}, Ljd;->a(Ljd;)V

    return-void
.end method

.method public b()Ljn;
    .locals 1

    iget-object v0, p0, Lje;->a:Ljd;

    invoke-virtual {v0}, Ljd;->f()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljn;

    return-object v0
.end method

.method public synthetic c()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lje;->b()Ljn;

    move-result-object v0

    return-object v0
.end method
