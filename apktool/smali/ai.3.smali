.class Lai;
.super LIU;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LIU",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lah;


# direct methods
.method constructor <init>(Lah;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lai;->a:Lah;

    invoke-direct {p0}, LIU;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lai;->a:Lah;

    invoke-virtual {v0}, Lah;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b()LIQ;
    .locals 1

    .prologue
    .line 727
    sget-object v0, LIQ;->d:LIQ;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lai;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
