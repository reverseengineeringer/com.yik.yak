.class final enum Lcom/parse/PushConnection$Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/PushConnection$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/PushConnection$Event;

.field public static final enum CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

.field public static final enum KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

.field public static final enum READ_ERROR:Lcom/parse/PushConnection$Event;

.field public static final enum START:Lcom/parse/PushConnection$Event;

.field public static final enum STOP:Lcom/parse/PushConnection$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-instance v0, Lcom/parse/PushConnection$Event;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/parse/PushConnection$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    .line 158
    new-instance v0, Lcom/parse/PushConnection$Event;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v3}, Lcom/parse/PushConnection$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    .line 159
    new-instance v0, Lcom/parse/PushConnection$Event;

    const-string v1, "CONNECTIVITY_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/parse/PushConnection$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    .line 160
    new-instance v0, Lcom/parse/PushConnection$Event;

    const-string v1, "KEEP_ALIVE_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/parse/PushConnection$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    .line 161
    new-instance v0, Lcom/parse/PushConnection$Event;

    const-string v1, "READ_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/parse/PushConnection$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/parse/PushConnection$Event;

    sget-object v1, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/parse/PushConnection$Event;->$VALUES:[Lcom/parse/PushConnection$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/PushConnection$Event;
    .locals 1

    .prologue
    .line 156
    const-class v0, Lcom/parse/PushConnection$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/PushConnection$Event;

    return-object v0
.end method

.method public static values()[Lcom/parse/PushConnection$Event;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/parse/PushConnection$Event;->$VALUES:[Lcom/parse/PushConnection$Event;

    invoke-virtual {v0}, [Lcom/parse/PushConnection$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/PushConnection$Event;

    return-object v0
.end method
