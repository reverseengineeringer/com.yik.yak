.class Lfj;
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
    .line 259
    iput-object p1, p0, Lfj;->a:Lfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lfj;->a:Lfg;

    invoke-static {v0}, Lfg;->e(Lfg;)LfB;

    move-result-object v0

    invoke-interface {v0}, LfB;->d()V

    .line 263
    return-void
.end method
