.class LHB;
.super LHy;
.source "SourceFile"


# instance fields
.field final synthetic a:LHA;


# direct methods
.method constructor <init>(LHA;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, LHB;->a:LHA;

    invoke-direct {p0}, LHy;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, LHB;->a:LHA;

    invoke-virtual {v0, p1}, LHA;->a(Landroid/app/Activity;)LHA;

    .line 356
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, LHB;->a:LHA;

    invoke-virtual {v0, p1}, LHA;->a(Landroid/app/Activity;)LHA;

    .line 351
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, LHB;->a:LHA;

    invoke-virtual {v0, p1}, LHA;->a(Landroid/app/Activity;)LHA;

    .line 361
    return-void
.end method
