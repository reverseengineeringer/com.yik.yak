.class Lfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfg;


# direct methods
.method constructor <init>(Lfg;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lfi;->a:Lfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lfi;->a:Lfg;

    invoke-static {v0}, Lfg;->e(Lfg;)LfB;

    move-result-object v0

    invoke-interface {v0}, LfB;->c()V

    .line 253
    return-void
.end method
