.class LDp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LEY;


# instance fields
.field final synthetic a:LDh;


# direct methods
.method constructor <init>(LDh;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, LDp;->a:LDh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, LDp;->a:LDh;

    invoke-virtual {v0}, LDh;->m()V

    .line 371
    iget-object v0, p0, LDp;->a:LDh;

    invoke-virtual {v0}, LDh;->a_()V

    .line 372
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LDp;->a:LDh;

    iget-boolean v1, v1, LDh;->j:Z

    invoke-virtual {v0, v1}, LGs;->e(Z)V

    .line 373
    return-void
.end method
