.class Lfk;
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
    .line 269
    iput-object p1, p0, Lfk;->a:Lfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lfk;->a:Lfg;

    invoke-static {v0}, Lfg;->e(Lfg;)LfB;

    move-result-object v0

    invoke-interface {v0}, LfB;->e()V

    .line 273
    return-void
.end method
