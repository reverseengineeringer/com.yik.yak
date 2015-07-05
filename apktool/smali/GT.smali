.class LGT;
.super LGQ;
.source "SourceFile"


# instance fields
.field final synthetic a:LGS;


# direct methods
.method constructor <init>(LGS;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, LGT;->a:LGS;

    invoke-direct {p0}, LGQ;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, LGT;->a:LGS;

    invoke-virtual {v0, p1}, LGS;->a(Landroid/app/Activity;)LGS;

    .line 356
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, LGT;->a:LGS;

    invoke-virtual {v0, p1}, LGS;->a(Landroid/app/Activity;)LGS;

    .line 351
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, LGT;->a:LGS;

    invoke-virtual {v0, p1}, LGS;->a(Landroid/app/Activity;)LGS;

    .line 361
    return-void
.end method
