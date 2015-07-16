.class LeZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LeX;


# direct methods
.method constructor <init>(LeX;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, LeZ;->a:LeX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, LeZ;->a:LeX;

    invoke-static {v0}, LeX;->a(LeX;)V

    .line 246
    return-void
.end method
